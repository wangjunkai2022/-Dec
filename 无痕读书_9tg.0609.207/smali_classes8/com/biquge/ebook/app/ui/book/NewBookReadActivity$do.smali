.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->private:Z

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->x(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 5
    iput-boolean v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->private:Z

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 7
    iput-boolean v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->abstract:Z

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->x(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 10
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->private:Z

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 12
    iput-boolean v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->continue:Z

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 14
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->abstract:Z

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 16
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 17
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 18
    iget-boolean v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->volatile:Z

    .line 19
    invoke-virtual {p1, v2}, Lcom/apk/h2;->else(Z)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 21
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 23
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->abstract:Z

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 25
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 26
    iput-boolean v1, p1, Lcom/apk/h2;->l:Z

    .line 27
    invoke-virtual {p1}, Lcom/apk/h2;->protected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 28
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setScrollState(Z)V

    goto :goto_1

    .line 29
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 30
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 31
    invoke-virtual {p1}, Lcom/apk/h2;->if()V

    .line 32
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 33
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz p1, :cond_4

    .line 34
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 35
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 36
    invoke-virtual {p1}, Lcom/apk/h2;->K()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->package:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 4
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->private:Z

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 6
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->continue:Z

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->continue:Z

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    const-string v0, "="

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 3
    invoke-virtual {v1}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 6
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->interface:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 9
    iput-object v0, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->interface:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 12
    invoke-virtual {v0, p1}, Lcom/apk/h2;->E(I)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 14
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v3}, Lcom/apk/h2;->continue(Z)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v2}, Lcom/apk/h2;->extends()I

    move-result v2

    sub-int/2addr v2, v5

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 17
    :goto_0
    iput-boolean v5, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->package:Z

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 19
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 20
    invoke-virtual {p1}, Lcom/apk/h2;->transient()Z

    move-result p1

    if-nez p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 22
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 23
    invoke-virtual {p1}, Lcom/apk/h2;->this()V

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 25
    iput-boolean v3, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->volatile:Z

    .line 26
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 27
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->strictfp:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 29
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 30
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 31
    invoke-virtual {p1}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 32
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 33
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->strictfp:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 35
    iput-boolean p1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->volatile:Z

    .line 36
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 37
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->strictfp:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 39
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 40
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->abstract:Z

    if-nez p1, :cond_5

    .line 41
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 42
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 43
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 44
    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->volatile:Z

    .line 45
    invoke-virtual {p1, v0}, Lcom/apk/h2;->else(Z)V

    .line 46
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    .line 47
    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->strictfp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
