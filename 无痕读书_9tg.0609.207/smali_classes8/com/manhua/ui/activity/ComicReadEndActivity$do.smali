.class public Lcom/manhua/ui/activity/ComicReadEndActivity$do;
.super Lcom/apk/r5;
.source "ComicReadEndActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicReadEndActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicReadEndActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicReadEndActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadEndActivity$do;->do:Lcom/manhua/ui/activity/ComicReadEndActivity;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public catch(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity$do;->do:Lcom/manhua/ui/activity/ComicReadEndActivity;

    .line 2
    iput-object p1, v0, Lcom/manhua/ui/activity/ComicReadEndActivity;->do:Lorg/json/JSONObject;

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mBookListLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity$do;->do:Lcom/manhua/ui/activity/ComicReadEndActivity;

    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mBooklistTitleTxt:Landroid/widget/TextView;

    const-string v2, "Title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ImgUrl"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicReadEndActivity$do;->do:Lcom/manhua/ui/activity/ComicReadEndActivity;

    iget-object v2, v2, Lcom/manhua/ui/activity/ComicReadEndActivity;->mBooklistImage:Landroid/widget/ImageView;

    const v3, 0x7f080223

    .line 7
    invoke-static {v0, v2, v3, v1}, Lcom/apk/u;->native(Ljava/lang/String;Landroid/widget/ImageView;IZ)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity$do;->do:Lcom/manhua/ui/activity/ComicReadEndActivity;

    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mBookListInfoTxt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity$do;->do:Lcom/manhua/ui/activity/ComicReadEndActivity;

    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadEndActivity;->mBookListInfoTxt:Landroid/widget/TextView;

    const-string v1, "Description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 11
    :try_start_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadEndActivity$do;->do:Lcom/manhua/ui/activity/ComicReadEndActivity;

    .line 12
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadEndActivity;->if:Lcom/manhua/adapter/ComicReadEndAdapter;

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadEndActivity$do;->do:Lcom/manhua/ui/activity/ComicReadEndActivity;

    .line 14
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadEndActivity;->if:Lcom/manhua/adapter/ComicReadEndAdapter;

    const/16 v0, 0x9

    .line 15
    invoke-static {p2, v0}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
