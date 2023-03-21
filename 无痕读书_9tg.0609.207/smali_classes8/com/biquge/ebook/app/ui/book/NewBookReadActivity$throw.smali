.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/apk/h1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->f0(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public for(Lcom/biquge/ebook/app/bean/ChapterBean;)V
    .locals 2

    const-string v0, "SP_NOVEL_ZHINENNG_CHAPTER_ID_KEY"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->C(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;Lcom/biquge/ebook/app/bean/ChapterBean;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apk/h2;->C(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public if(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 4
    iput-object p1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 5
    iput p2, v0, Lcom/apk/h2;->goto:I

    .line 6
    invoke-virtual {v0}, Lcom/apk/h2;->w()V

    :cond_0
    return-void
.end method

.method public new(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->super(Ljava/util/List;)V

    :cond_0
    return-void
.end method
