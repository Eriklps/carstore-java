package br.com.carstore.servlet;

import br.com.carstore.dao.CarDao;
import br.com.carstore.model.Car;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.apache.commons.fileupload.servlet.ServletFileUpload.isMultipartContent;

@WebServlet("/create")
public class CreateCarServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {

        httpServletRequest.setCharacterEncoding("UTF-8");

        Map<String, String> parameters = uploadImage(httpServletRequest);

        String carId = parameters.get("id");
        String carName = parameters.get("car-name");
        String image = parameters.get("image");

        CarDao carDao = new CarDao();
        Car car = new Car(carId, carName, image);

        if (carId.isBlank()) {

            carDao.createCar(car);

        } else {

            carDao.updateCar(car);
        }


        httpServletResponse.sendRedirect("/admin/find-all-cars");

    }

    private Map<String, String> uploadImage(HttpServletRequest httpServletRequest) {

        HashMap<String, String> parameters = new HashMap<>();

        if (isMultipartContent(httpServletRequest)) {

            try {

                DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();

                List<FileItem> fileItems = new ServletFileUpload(diskFileItemFactory).parseRequest(httpServletRequest);

                for (FileItem item: fileItems) {

                    checkFieldType(item, parameters);

                }

            } catch (Exception e) {

                parameters.put("image", "img/default-car.jpg");

            }

            return parameters;

        }

        return parameters;

    }

    private void checkFieldType(FileItem fileItem, Map requestParameters) throws Exception {

        if (fileItem.isFormField()){

            requestParameters.put(fileItem.getFieldName(), fileItem.getString());

        } else {

            String fileName = processUploadedFile(fileItem);

            requestParameters.put("image", fileName);

        }

    }

    private String processUploadedFile(FileItem fileItem) throws Exception {

        Long currentTime = new Date().getTime();

        String fileName = currentTime.toString().concat("-").concat(fileItem.getName().replace(" ", ""));
        String filePath = this.getServletContext().getRealPath("img").concat(File.separator).concat(fileName);

        fileItem.write(new File(filePath));

        return fileName;

    }

}
