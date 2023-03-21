package org.litepal.exceptions;
/* loaded from: classes7.dex */
public class DatabaseGenerateException extends RuntimeException {
    public static final String CLASS_NOT_FOUND = "can not find a class named ";
    public static final String EXTERNAL_STORAGE_PERMISSION_DENIED = "You don't have permission to access database at %1$s. Make sure you handled WRITE_EXTERNAL_STORAGE runtime permission correctly.";
    public static final String SQL_ERROR = "An exception that indicates there was an error with SQL parsing or execution. ";
    public static final String SQL_SYNTAX_ERROR = "SQL syntax error happens while executing ";
    public static final String TABLE_DOES_NOT_EXIST = "Table doesn't exist with the name of ";
    public static final String TABLE_DOES_NOT_EXIST_WHEN_EXECUTING = "Table doesn't exist when executing ";
    public static final long serialVersionUID = 1;

    public DatabaseGenerateException(String str) {
        super(str);
    }
}
