.class public Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto$if;
.super Lcom/apk/bg;
.source "BookSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->for(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto$if;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto$if;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto$if;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto$if;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto$if;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->s()V

    return-void
.end method
