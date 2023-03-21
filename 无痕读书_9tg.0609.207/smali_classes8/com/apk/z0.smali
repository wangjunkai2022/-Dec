.class public final Lcom/apk/z0;
.super Lcom/apk/c1;
.source "WebInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/View;

.field public final synthetic for:I

.field public final synthetic if:Ljava/io/File;

.field public final synthetic new:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/io/File;ILandroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z0;->do:Landroid/view/View;

    iput-object p2, p0, Lcom/apk/z0;->if:Ljava/io/File;

    iput p3, p0, Lcom/apk/z0;->for:I

    iput-object p4, p0, Lcom/apk/z0;->new:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/z0;->do:Landroid/view/View;

    invoke-static {v0}, Lcom/apk/ze;->o0(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/apk/z0;->if:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/apk/w0;->do:Lcom/lxj/xpopup/impl/LoadingPopupView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/apk/w0;->do:Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    sput-object p1, Lcom/apk/w0;->do:Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 5
    iget p1, p0, Lcom/apk/z0;->for:I

    const-string v0, "\u5206\u4eab\u5230 "

    const-string v1, "image/*"

    const-string v2, ".fileprovider"

    const-string v3, "android.intent.extra.STREAM"

    const/16 v4, 0x18

    const-string v5, "android.intent.action.SEND"

    const-string v6, "com.tencent.mm"

    const/4 v7, 0x1

    if-eq p1, v7, :cond_6

    const/4 v8, 0x2

    if-eq p1, v8, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/apk/z0;->if:Ljava/io/File;

    if-eqz p1, :cond_9

    .line 7
    iget-object v0, p0, Lcom/apk/z0;->new:Landroid/app/Activity;

    if-eqz p1, :cond_9

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 9
    :cond_2
    new-instance v1, Lcom/apk/yu;

    invoke-direct {v1, v0}, Lcom/apk/yu;-><init>(Landroid/app/Activity;)V

    .line 10
    sget-object v2, Lcom/apk/wu;->do:[Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Lcom/apk/yu;->if([Ljava/lang/String;)Lcom/apk/yu;

    new-instance v2, Lcom/apk/x0;

    invoke-direct {v2, v0, p1}, Lcom/apk/x0;-><init>(Landroid/app/Activity;Ljava/io/File;)V

    .line 12
    invoke-virtual {v1, v2}, Lcom/apk/yu;->for(Lcom/apk/vu;)V

    goto/16 :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/apk/z0;->if:Ljava/io/File;

    if-eqz p1, :cond_9

    .line 14
    iget-object v8, p0, Lcom/apk/z0;->new:Landroid/app/Activity;

    if-eqz p1, :cond_9

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_2

    .line 16
    :cond_4
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct {v9, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 19
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_5

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 21
    invoke-virtual {v6, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 23
    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v6, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    :goto_0
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-static {v6, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 26
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {v8, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/apk/z0;->if:Ljava/io/File;

    if-eqz p1, :cond_9

    .line 29
    iget-object v8, p0, Lcom/apk/z0;->new:Landroid/app/Activity;

    if-eqz p1, :cond_9

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    .line 31
    :cond_7
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v9, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v6, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 34
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_8

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 36
    invoke-virtual {v6, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 38
    :cond_8
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v6, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    :goto_1
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-static {v6, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 41
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 42
    invoke-virtual {v8, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    :goto_2
    return-void
.end method
