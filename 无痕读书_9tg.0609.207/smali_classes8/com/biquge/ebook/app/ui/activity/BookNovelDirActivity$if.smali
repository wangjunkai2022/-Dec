.class public Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity$if;
.super Lcom/apk/u5;
.source "BookNovelDirActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public goto(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->do:Lcom/apk/k;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/k;->for(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
