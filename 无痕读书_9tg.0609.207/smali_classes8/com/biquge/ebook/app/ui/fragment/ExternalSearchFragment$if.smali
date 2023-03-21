.class public Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$if;
.super Ljava/lang/Object;
.source "ExternalSearchFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->do:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/FastSearchWord;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/FastSearchWord;->getWord()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->h()V

    :cond_0
    return-void
.end method
