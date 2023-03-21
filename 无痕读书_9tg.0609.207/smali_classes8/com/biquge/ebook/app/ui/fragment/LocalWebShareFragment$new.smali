.class public Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;
.super Lcom/apk/c1;
.source "LocalWebShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/w;->class(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    invoke-static {v0}, Lcom/apk/jg;->do(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    iput-object v0, v1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->if:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->do:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->share_code:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->share_code:Landroid/widget/TextView;

    const v0, 0x7f100220

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->share_code:Landroid/widget/TextView;

    const v0, 0x7f100228

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/apk/w0;->class()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->dialog_qrcode_progress_view:Lcom/biquge/ebook/app/widget/AppProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    .line 9
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->if:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->dialog_qrcode_imageview:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->if:Landroid/graphics/Bitmap;

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;->if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->dialog_qrcode_progress_view:Lcom/biquge/ebook/app/widget/AppProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
