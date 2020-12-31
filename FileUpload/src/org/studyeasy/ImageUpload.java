package org.studyeasy;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.studyeasy.hibernate.DAO.FilesDAO;
import org.studyeasy.hibernate.entity.Files;

/**
 * Servlet implementation class ImageUpload
 */
@WebServlet("/ImageUpload")
public class ImageUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String path = "c:/images/";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		switch (action) {
		case "FileUpload":
			fileUpload(request, response);
			break;
		case "listingImages":
			listImages(request, response);
		case "updateInformation":
			updateInformation(request, response);
			break;
		default:
			request.getRequestDispatcher("image_upload.jsp").forward(request, response);
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		switch (action) {
		case "listingImages":
			listImages(request, response);
			break;
		case "viewImage":
			viewImage(request,response);
			break;
		default:
			request.getRequestDispatcher("image_upload.jsp").forward(request, response);
		}
	}

	private void viewImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int FileId = Integer.parseInt(request.getParameter("fileId"));
		Files File = new FilesDAO().getFile(FileId);
		System.out.println(File);
		//request.getRequestDispatcher("view_image.jsp").forward(request, response);
	}

	private void updateInformation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int FileId = Integer.parseInt(request.getParameter("fileId"));
		String label = request.getParameter("label");
		String caption = request.getParameter("caption");
		Files file = new Files(FileId, label, caption);
		new FilesDAO().updateFileDetails(FileId,label,caption);
		listImages(request, response);
	}

	private void listImages(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Files> files = new FilesDAO().listFiles();
		request.setAttribute("files", files);
		request.setAttribute("path", path);
		request.getRequestDispatcher("listFiles.jsp").forward(request, response);
	}

	public void fileUpload(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());

		try {
			List<FileItem> images = upload.parseRequest(request);
			for (FileItem image : images) {
				String name = image.getName();
				try {
					name = name.substring(name.lastIndexOf("\\") + 1);
				} catch (Exception e) {
					e.printStackTrace();
				}
				System.out.println(name);
				File file = new File(path + name);
				if (!file.exists()) {
					new FilesDAO().addFileDetails(new Files(name));
					image.write(file);
				}
			}
			listImages(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
