.class public Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;
.super Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;
.source "PostExecutor.java"


# instance fields
.field public e:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/v;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;->e:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;

    return-void
.end method


# virtual methods
.method public a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/a;)V
    .locals 2

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;-><init>()V

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is Empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;Ljava/io/IOException;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;->e:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RequestBody is null, content type is not support!!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;Ljava/io/IOException;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;)V

    .line 9
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;->a(Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;

    .line 10
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;->e:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;

    .line 11
    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;->a()Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->a:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/v;

    invoke-virtual {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/v;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/e;

    move-result-object v0

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c$a;

    invoke-direct {v1, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/a;)V

    .line 14
    invoke-interface {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/e;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/f;)V

    return-void

    .line 15
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is not a valid HTTP or HTTPS URL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;Ljava/io/IOException;)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/u;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/u;

    move-result-object p1

    invoke-static {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/u;[B)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;->e:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;

    return-void
.end method

.method public b()Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/b;
    .locals 14

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;-><init>()V

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "PostExecutor"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v0, "execute: Url is Empty"

    .line 3
    invoke-static {v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_int108/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;->e:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;

    if-nez v1, :cond_1

    const-string v0, "RequestBody is null, content type is not support!!"

    .line 6
    invoke-static {v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_int108/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;)V

    .line 8
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;->a(Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;

    .line 9
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;->e:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;

    .line 10
    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y$a;->a()Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y;

    move-result-object v0

    .line 12
    :try_start_1
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->a:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/v;

    invoke-virtual {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/v;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/y;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/e;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/e;->i()Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a0;->m()Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/r;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/r;->b()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 17
    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/r;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/r;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_2
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/b;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a0;->n()Z

    move-result v5

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a0;->k()I

    move-result v6

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a0;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a0;->i()Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/b0;

    move-result-object v2

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/b0;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a0;->t()J

    move-result-wide v10

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a0;->r()J

    move-result-wide v12

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/b;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    return-object v3

    :catch_1
    const-string v0, "execute: Url is not a valid HTTP or HTTPS URL"

    .line 20
    invoke-static {v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_int108/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "{}"

    :cond_0
    const-string v0, "application/json; charset=utf-8"

    .line 2
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/u;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/u;

    move-result-object v0

    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/u;Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;->e:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/z;

    return-void
.end method
