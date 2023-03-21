.class public Lcom/apk/fo0;
.super Lcom/apk/mo0;
.source "Comment.java"


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

    check-cast v0, Lcom/apk/fo0;

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

    check-cast v0, Lcom/apk/fo0;

    return-object v0
.end method

.method public return()Ljava/lang/String;
    .locals 1

    const-string v0, "#comment"

    return-object v0
.end method

.method public switch(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p3, Lcom/apk/ho0$do;->try:Z

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/apk/no0;->if:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    instance-of v1, v0, Lcom/apk/jo0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/apk/jo0;

    .line 4
    iget-object v0, v0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 5
    iget-boolean v0, v0, Lcom/apk/xo0;->new:Z

    if-nez v0, :cond_1

    .line 6
    :cond_0
    iget-boolean v0, p3, Lcom/apk/ho0$do;->case:Z

    if-eqz v0, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/apk/no0;->native(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V

    :cond_2
    const-string p2, "<!--"

    .line 8
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/apk/mo0;->continue()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "-->"

    .line 11
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
