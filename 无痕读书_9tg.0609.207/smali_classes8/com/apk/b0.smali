.class public Lcom/apk/b0;
.super Lcom/apk/c1;
.source "BaiDuVoiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic for:Z

.field public final synthetic if:Lcom/apk/e1;

.field public final synthetic new:Lcom/apk/c0;


# direct methods
.method public constructor <init>(Lcom/apk/c0;Landroid/content/Context;Lcom/apk/e1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/b0;->new:Lcom/apk/c0;

    iput-object p2, p0, Lcom/apk/b0;->do:Landroid/content/Context;

    iput-object p3, p0, Lcom/apk/b0;->if:Lcom/apk/e1;

    iput-boolean p4, p0, Lcom/apk/b0;->for:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/b0;->new:Lcom/apk/c0;

    .line 2
    iget-boolean v0, v0, Lcom/apk/c0;->case:Z

    if-nez v0, :cond_0

    const-string v0, "BaiduPlugin"

    .line 3
    :try_start_0
    sget-object v1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string v2, "jniLibs"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/a6;->this()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apk/ze;->this(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apk/b0;->new:Lcom/apk/c0;

    .line 9
    iget-boolean v1, v0, Lcom/apk/c0;->case:Z

    if-nez v1, :cond_3

    .line 10
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v2, 0x1

    .line 11
    iput-boolean v2, v0, Lcom/apk/c0;->case:Z

    const-string v2, "libBDSpeechDecoder_V1.so"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/apk/c0;->do(Lcom/apk/c0;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/apk/b0;->new:Lcom/apk/c0;

    const-string v2, "libgnustl_shared.so"

    invoke-static {v0, v1, v2}, Lcom/apk/c0;->do(Lcom/apk/c0;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/apk/b0;->new:Lcom/apk/c0;

    const-string v2, "libbd_etts.so"

    invoke-static {v0, v1, v2}, Lcom/apk/c0;->do(Lcom/apk/c0;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/apk/b0;->new:Lcom/apk/c0;

    const-string v2, "libbdtts.so"

    invoke-static {v0, v1, v2}, Lcom/apk/c0;->do(Lcom/apk/c0;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/apk/b0;->new:Lcom/apk/c0;

    .line 17
    iget-boolean v0, v0, Lcom/apk/c0;->case:Z

    if-nez v0, :cond_3

    .line 18
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/apk/continue;->final:Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;-><init>()V

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->getYyonline()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI_4G"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 23
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->setYyonline(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 25
    iput-object v0, v1, Lcom/apk/continue;->final:Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 26
    throw v0

    .line 27
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/apk/b0;->new:Lcom/apk/c0;

    new-instance v1, Lcom/apk/f0;

    iget-object v2, p0, Lcom/apk/b0;->do:Landroid/content/Context;

    iget-object v3, p0, Lcom/apk/b0;->if:Lcom/apk/e1;

    invoke-direct {v1, v2, v3}, Lcom/apk/f0;-><init>(Landroid/content/Context;Lcom/apk/e1;)V

    .line 28
    iput-object v1, v0, Lcom/apk/c0;->for:Lcom/apk/f0;

    .line 29
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/b0;->if:Lcom/apk/e1;

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/apk/b0;->for:Z

    invoke-interface {p1, v0, v1}, Lcom/apk/e1;->for(ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/apk/b0;->if:Lcom/apk/e1;

    iget-object v0, p0, Lcom/apk/b0;->new:Lcom/apk/c0;

    .line 5
    iget-boolean v0, v0, Lcom/apk/c0;->case:Z

    .line 6
    iget-boolean v1, p0, Lcom/apk/b0;->for:Z

    invoke-interface {p1, v0, v1}, Lcom/apk/e1;->for(ZZ)V

    :goto_0
    return-void
.end method
