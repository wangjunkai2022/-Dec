package org.junit.rules;

import java.io.File;
import java.io.IOException;
/* loaded from: classes6.dex */
public class TemporaryFolder extends ExternalResource {
    private File folder;
    private final File parentFolder;

    public TemporaryFolder() {
        this(null);
    }

    public TemporaryFolder(File parentFolder) {
        this.parentFolder = parentFolder;
    }

    @Override // org.junit.rules.ExternalResource
    protected void before() throws Throwable {
        create();
    }

    @Override // org.junit.rules.ExternalResource
    protected void after() {
        delete();
    }

    public void create() throws IOException {
        this.folder = createTemporaryFolderIn(this.parentFolder);
    }

    public File newFile(String fileName) throws IOException {
        File file = new File(getRoot(), fileName);
        if (!file.createNewFile()) {
            throw new IOException("a file with the name '" + fileName + "' already exists in the test folder");
        }
        return file;
    }

    public File newFile() throws IOException {
        return File.createTempFile("junit", null, getRoot());
    }

    public File newFolder(String folder) throws IOException {
        return newFolder(folder);
    }

    public File newFolder(String... folderNames) throws IOException {
        File file = getRoot();
        int i = 0;
        while (i < folderNames.length) {
            String folderName = folderNames[i];
            File file2 = new File(file, folderName);
            if (file2.mkdir() || !isLastElementInArray(i, folderNames)) {
                i++;
                file = file2;
            } else {
                throw new IOException("a folder with the name '" + folderName + "' already exists");
            }
        }
        return file;
    }

    private boolean isLastElementInArray(int index, String[] array) {
        return index == array.length + (-1);
    }

    public File newFolder() throws IOException {
        return createTemporaryFolderIn(getRoot());
    }

    private File createTemporaryFolderIn(File parentFolder) throws IOException {
        File createdFolder = File.createTempFile("junit", "", parentFolder);
        createdFolder.delete();
        createdFolder.mkdir();
        return createdFolder;
    }

    public File getRoot() {
        if (this.folder == null) {
            throw new IllegalStateException("the temporary folder has not yet been created");
        }
        return this.folder;
    }

    public void delete() {
        if (this.folder != null) {
            recursiveDelete(this.folder);
        }
    }

    private void recursiveDelete(File file) {
        File[] files = file.listFiles();
        if (files != null) {
            for (File each : files) {
                recursiveDelete(each);
            }
        }
        file.delete();
    }
}
