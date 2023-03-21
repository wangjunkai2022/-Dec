.class public Lcom/manhua/ui/activity/ComicCategoryActivity$goto;
.super Ljava/lang/Object;
.source "ComicCategoryActivity.java"

# interfaces
.implements Lcom/apk/b40$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicCategoryActivity;
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
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$goto;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$goto;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->if()V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$goto;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    invoke-static {p1}, Lcom/manhua/ui/activity/ComicCategoryActivity;->i(Lcom/manhua/ui/activity/ComicCategoryActivity;)V

    return-void
.end method
