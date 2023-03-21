.class public Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_for12/c;
.super Ljava/lang/Object;
.source "LDebug.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->l()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->b()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

    move-result-object p0

    invoke-interface {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->l()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->b()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

    move-result-object p0

    invoke-interface {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;->l()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->l()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->b()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

    move-result-object p0

    invoke-interface {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->l()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->b()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

    move-result-object p0

    invoke-interface {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;->l()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 6
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ad_log_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->l()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->b()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

    move-result-object p0

    invoke-interface {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->l()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->b()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

    move-result-object p0

    invoke-interface {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;->l()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->l()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->b()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

    move-result-object p0

    invoke-interface {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->l()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/j;->b()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

    move-result-object p0

    invoke-interface {p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;->l()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 6
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ad_log_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
