.class public Lcom/biquge/ebook/app/bean/RedBgImageBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "RedBgImageBean.java"


# static fields
.field public static final RED_BG_SELECT_TYPE:Ljava/lang/String; = "RED_BG_SELECT_TYPE"

.field public static final RED_BG_TYPE_COLOR:Ljava/lang/String; = "4"

.field public static final RED_BG_TYPE_CUSTOM_COLOR:Ljava/lang/String; = "5"

.field public static final RED_BG_TYPE_CUSTOM_IMAGE:Ljava/lang/String; = "6"

.field public static final RED_BG_TYPE_EYE:Ljava/lang/String; = "2"

.field public static final RED_BG_TYPE_IMAGE:Ljava/lang/String; = "3"

.field public static final RED_BG_TYPE_NIGHT:Ljava/lang/String; = "1"


# instance fields
.field public bgColor:Ljava/lang/String;

.field public bgImage:Ljava/lang/String;

.field public fColor:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public sId:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const-string v0, "4"

    .line 2
    iput-object v0, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBgColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->bgColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBgImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->bgImage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->icon:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getfColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->fColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getsId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->sId:I

    return v0
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->bgColor:Ljava/lang/String;

    return-void
.end method

.method public setBgImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->bgImage:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setfColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->fColor:Ljava/lang/String;

    return-void
.end method

.method public setsId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;->sId:I

    return-void
.end method
