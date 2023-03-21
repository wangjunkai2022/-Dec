.class public final Lbykvm_19do/bykvm_19do/bykvm_19do/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_19do/a1;
    .locals 2

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/m1;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/m1;-><init>()V

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/a1;)V

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/m1;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/m1;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/m1;-><init>()V

    return-object p0

    .line 5
    :cond_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/e1;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/f1;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/f1;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/e1;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/e1;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 9
    :cond_3
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/i;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/i;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;-><init>()V

    return-object p0

    .line 12
    :cond_5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/i;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/x0;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/x0;-><init>()V

    return-object p0

    .line 14
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_b

    .line 15
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/i;->h()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 16
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/i1;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/i1;-><init>()V

    return-object p0

    .line 17
    :cond_7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/i;->j()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 18
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/y0;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/y0;-><init>()V

    return-object p0

    .line 19
    :cond_8
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/i;->i()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 20
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/w0;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/w0;-><init>()V

    return-object p0

    .line 21
    :cond_9
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/i;->k()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 22
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/n0;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/n0;-><init>()V

    return-object p0

    .line 23
    :cond_a
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/r0;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/r0;-><init>()V

    return-object p0

    .line 24
    :cond_b
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/i;->d()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 25
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;-><init>()V

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_d
    :goto_0
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0;-><init>()V

    return-object p0
.end method
