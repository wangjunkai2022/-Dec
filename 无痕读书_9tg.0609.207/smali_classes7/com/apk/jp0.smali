.class public Lcom/apk/jp0;
.super Ljava/lang/Object;
.source "NodeTraversor.java"


# direct methods
.method public static do(Lcom/apk/kp0;Lcom/apk/no0;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 3
    iget-object v3, v1, Lcom/apk/no0;->do:Lcom/apk/no0;

    .line 4
    invoke-interface {p0, v1, v2}, Lcom/apk/kp0;->do(Lcom/apk/no0;I)V

    if-eqz v3, :cond_1

    .line 5
    iget-object v4, v1, Lcom/apk/no0;->do:Lcom/apk/no0;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    .line 6
    iget v1, v1, Lcom/apk/no0;->if:I

    .line 7
    invoke-virtual {v3, v1}, Lcom/apk/no0;->goto(I)Lcom/apk/no0;

    move-result-object v1

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/apk/no0;->this()I

    move-result v3

    if-lez v3, :cond_2

    .line 9
    invoke-virtual {v1, v0}, Lcom/apk/no0;->goto(I)Lcom/apk/no0;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_2
    invoke-virtual {v1}, Lcom/apk/no0;->public()Lcom/apk/no0;

    move-result-object v3

    if-nez v3, :cond_4

    if-gtz v2, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    invoke-interface {p0, v1, v2}, Lcom/apk/kp0;->if(Lcom/apk/no0;I)V

    .line 12
    iget-object v1, v1, Lcom/apk/no0;->do:Lcom/apk/no0;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 13
    :cond_4
    :goto_3
    invoke-interface {p0, v1, v2}, Lcom/apk/kp0;->if(Lcom/apk/no0;I)V

    if-ne v1, p1, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    invoke-virtual {v1}, Lcom/apk/no0;->public()Lcom/apk/no0;

    move-result-object v1

    goto :goto_0

    :cond_6
    :goto_4
    return-void
.end method
