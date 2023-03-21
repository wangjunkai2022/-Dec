.class public Lcom/apk/mb;
.super Lcom/apk/bg;
.source "ExternalSearchFragment.java"


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/mb;->if:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    iput-object p2, p0, Lcom/apk/mb;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/mb;->if:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    iget-object v0, p0, Lcom/apk/mb;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/apk/mb;->if:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    iget-object v0, p0, Lcom/apk/mb;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 3
    iget-object p1, p0, Lcom/apk/mb;->if:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->h()V

    return-void
.end method
