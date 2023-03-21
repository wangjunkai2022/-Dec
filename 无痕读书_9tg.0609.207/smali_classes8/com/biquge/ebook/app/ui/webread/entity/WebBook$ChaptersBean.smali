.class public Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;
.super Ljava/lang/Object;
.source "WebBook.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/webread/entity/WebBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChaptersBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x183e0fcc99137d4cL


# instance fields
.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->url:Ljava/lang/String;

    return-void
.end method
