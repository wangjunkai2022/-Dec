.class public Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;
.super Ljava/lang/Object;
.source "UploadBookFragment.java"

# interfaces
.implements Lcom/apk/b40$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 1

    const/16 p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mLinkEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    const v0, 0x7f1003a9

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mLinkEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mLinkEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 4
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mLinkEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mSelectFileTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mSelectFileTv:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mNameEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->clearFocus()V

    .line 8
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mAuthorEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->clearFocus()V

    .line 9
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mLinkEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    return-void
.end method
