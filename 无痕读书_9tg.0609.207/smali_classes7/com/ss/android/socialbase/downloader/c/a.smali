.class public Lcom/ss/android/socialbase/downloader/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/c/a$a;
    }
.end annotation


# static fields
.field public static a:I = 0x4

.field public static b:Lcom/ss/android/socialbase/downloader/c/a$a;


# direct methods
.method public static a(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DownloaderLogger"

    .line 6
    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x2

    .line 4
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 7
    :cond_0
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 8
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    :cond_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_2

    .line 10
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static a()Z
    .locals 2

    .line 2
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Downloader-"

    .line 2
    invoke-static {v0, p0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DownloaderLogger"

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :cond_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/a$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DownloaderLogger"

    .line 5
    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    :cond_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/a$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    :cond_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/a$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    :cond_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/a$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
