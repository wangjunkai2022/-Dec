.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_this102/a;
.super Ljava/lang/Object;
.source "TTTestToolUtil.java"


# direct methods
.method public static a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->A()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->A()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->A()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 5
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->G()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pangle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 11
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->G()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_6
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->I()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->a(Ljava/util/List;)V

    goto :goto_0

    .line 16
    :cond_7
    invoke-virtual {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->b(Ljava/util/List;)V

    .line 17
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 18
    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f(I)V

    .line 19
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v1

    if-nez v1, :cond_8

    .line 20
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->i()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->b(D)V

    .line 21
    :cond_8
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_9

    .line 22
    invoke-virtual {p0, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->b(Z)V

    .line 23
    :cond_9
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v1

    if-eq v1, v3, :cond_a

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 24
    :cond_a
    invoke-virtual {p0, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->a(Z)V

    .line 25
    :cond_b
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->h(I)V

    return-object p0

    :cond_c
    :goto_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "gm_test_slot_"

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0xd

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method
