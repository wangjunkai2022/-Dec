.class public Lcom/apk/rf0;
.super Ljava/lang/Object;
.source "Unzip.java"


# instance fields
.field public do:Lcom/apk/of0;


# direct methods
.method public constructor <init>(Lcom/apk/of0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/apk/rf0;->do:Lcom/apk/of0;

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/apk/af0;

    const-string v0, "ZipModel is null"

    invoke-direct {p1, v0}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final do(Lcom/apk/if0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/apk/sb0;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object p1, p1, Lcom/apk/if0;->catch:Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/apk/sb0;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    .line 4
    :goto_0
    invoke-static {p3}, Lcom/apk/sb0;->finally(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p2, p3}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lcom/apk/af0;

    invoke-direct {p2, p1}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_3
    new-instance p1, Lcom/apk/af0;

    const-string p2, "Cannot check output directory structure...one of the parameters was null"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final if(Ljava/util/ArrayList;Lcom/apk/kf0;Lcom/apk/pf0;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/if0;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 3
    :try_start_0
    iget-object v3, v1, Lcom/apk/if0;->catch:Ljava/lang/String;

    .line 4
    iput-object v3, p3, Lcom/apk/pf0;->try:Ljava/lang/String;

    .line 5
    sget-object v3, Lcom/apk/tf0;->do:Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/apk/tf0;->do:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, p4

    .line 7
    :goto_1
    iget-boolean v4, v1, Lcom/apk/if0;->class:Z
    :try_end_0
    .catch Lcom/apk/af0; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_2

    .line 8
    :try_start_1
    iget-object v1, v1, Lcom/apk/if0;->catch:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Lcom/apk/sb0;->finally(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    :try_start_2
    invoke-virtual {p3}, Lcom/apk/pf0;->do()V

    .line 15
    new-instance p2, Lcom/apk/af0;

    invoke-direct {p2, p1}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 16
    :cond_2
    invoke-virtual {p0, v1, v3, v2}, Lcom/apk/rf0;->do(Lcom/apk/if0;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v4, Lcom/apk/sf0;

    iget-object v5, p0, Lcom/apk/rf0;->do:Lcom/apk/of0;

    invoke-direct {v4, v5, v1}, Lcom/apk/sf0;-><init>(Lcom/apk/of0;Lcom/apk/if0;)V
    :try_end_2
    .catch Lcom/apk/af0; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 18
    :try_start_3
    invoke-virtual {v4, p3, v3, v2, p2}, Lcom/apk/sf0;->class(Lcom/apk/pf0;Ljava/lang/String;Ljava/lang/String;Lcom/apk/kf0;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 19
    :try_start_4
    invoke-virtual {p3}, Lcom/apk/pf0;->do()V

    .line 20
    new-instance p2, Lcom/apk/af0;

    invoke-direct {p2, p1}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Lcom/apk/af0; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 21
    invoke-virtual {p3}, Lcom/apk/pf0;->do()V

    .line 22
    new-instance p2, Lcom/apk/af0;

    invoke-direct {p2, p1}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 23
    invoke-virtual {p3}, Lcom/apk/pf0;->do()V

    .line 24
    throw p1

    .line 25
    :cond_4
    new-instance p1, Lcom/apk/af0;

    const-string p2, "fileHeader is null"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method
