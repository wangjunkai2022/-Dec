.class public Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;
.super Lcom/apk/u5;
.source "BookReadEndActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public class(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    .line 2
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->for:Lorg/json/JSONObject;

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBooklistTitleTxt:Landroid/widget/TextView;

    const-string v1, "Title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ImgUrl"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBooklistImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/apk/u;->throw(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBookListInfoTxt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBookListInfoTxt:Landroid/widget/TextView;

    const-string v1, "Description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBookListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 10
    :try_start_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    .line 11
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->if:Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    .line 13
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->if:Lcom/biquge/ebook/app/adapter/BookReadEndAdapter;

    const/16 v0, 0x9

    .line 14
    invoke-static {p2, v0}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
