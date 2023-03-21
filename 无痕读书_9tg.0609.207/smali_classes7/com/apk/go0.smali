.class public Lcom/apk/go0;
.super Lcom/apk/mo0;
.source "DataNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/mo0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/mo0;->new:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public class()Lcom/apk/no0;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/no0;->class()Lcom/apk/no0;

    move-result-object v0

    check-cast v0, Lcom/apk/go0;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/apk/no0;->class()Lcom/apk/no0;

    move-result-object v0

    check-cast v0, Lcom/apk/go0;

    return-object v0
.end method

.method public return()Ljava/lang/String;
    .locals 1

    const-string v0, "#data"

    return-object v0
.end method

.method public switch(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/mo0;->continue()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public throws(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/no0;->static()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
