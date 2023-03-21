.class public Lcom/biquge/ebook/app/bean/ReadPostion;
.super Lorg/litepal/crud/LitePalSupport;
.source "ReadPostion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x6bb6826b49974877L


# instance fields
.field public bookId:Ljava/lang/String;

.field public readPostion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ReadPostion;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getReadPostion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/ReadPostion;->readPostion:I

    return v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ReadPostion;->bookId:Ljava/lang/String;

    return-void
.end method

.method public setReadPostion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/ReadPostion;->readPostion:I

    return-void
.end method
