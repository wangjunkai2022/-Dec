.class public Lcom/apk/eo0;
.super Lcom/apk/po0;
.source "CDataNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/po0;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic class()Lcom/apk/no0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/eo0;->protected()Lcom/apk/eo0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/eo0;->protected()Lcom/apk/eo0;

    move-result-object v0

    return-object v0
.end method

.method public protected()Lcom/apk/eo0;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/po0;->volatile()Lcom/apk/po0;

    move-result-object v0

    check-cast v0, Lcom/apk/eo0;

    return-object v0
.end method

.method public return()Ljava/lang/String;
    .locals 1

    const-string v0, "#cdata"

    return-object v0
.end method

.method public switch(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "<![CDATA["

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/apk/mo0;->continue()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public throws(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    .locals 0

    :try_start_0
    const-string p2, "]]>"

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/apk/yn0;

    invoke-direct {p2, p1}, Lcom/apk/yn0;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic volatile()Lcom/apk/po0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/eo0;->protected()Lcom/apk/eo0;

    move-result-object v0

    return-object v0
.end method
