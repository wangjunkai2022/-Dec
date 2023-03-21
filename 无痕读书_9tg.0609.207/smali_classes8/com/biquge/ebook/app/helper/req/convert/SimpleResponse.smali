.class public Lcom/biquge/ebook/app/helper/req/convert/SimpleResponse;
.super Ljava/lang/Object;
.source "SimpleResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = -0x148185dfe08ff824L


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toLzyResponse()Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;
    .locals 2

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;

    invoke-direct {v0}, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;-><init>()V

    .line 2
    iget v1, p0, Lcom/biquge/ebook/app/helper/req/convert/SimpleResponse;->code:I

    iput v1, v0, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->code:I

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/helper/req/convert/SimpleResponse;->msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/biquge/ebook/app/helper/req/convert/LzyResponse;->msg:Ljava/lang/String;

    return-object v0
.end method
