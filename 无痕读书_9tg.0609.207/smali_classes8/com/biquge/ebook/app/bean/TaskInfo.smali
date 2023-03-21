.class public Lcom/biquge/ebook/app/bean/TaskInfo;
.super Lorg/litepal/crud/LitePalSupport;
.source "TaskInfo.java"


# instance fields
.field public bookId:Ljava/lang/String;

.field public finish:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->url:Ljava/lang/String;

    const-string p1, "0"

    .line 4
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->finish:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->bookId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->url:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getFinish()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->finish:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFinishTask(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "1"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->bookId:Ljava/lang/String;

    return-void
.end method

.method public setFinish(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->finish:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/TaskInfo;->url:Ljava/lang/String;

    return-void
.end method
