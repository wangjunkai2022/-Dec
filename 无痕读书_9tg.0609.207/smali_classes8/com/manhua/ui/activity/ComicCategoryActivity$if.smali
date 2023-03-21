.class public Lcom/manhua/ui/activity/ComicCategoryActivity$if;
.super Ljava/lang/Object;
.source "ComicCategoryActivity.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicCategoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$if;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$if;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 2
    iget-boolean v0, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->this:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/manhua/ui/activity/ComicCategoryActivity;->i(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$if;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->this:Z

    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$if;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 2
    iget-object p2, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->do:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    .line 3
    iget-boolean p2, p2, Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;->do:Z

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
