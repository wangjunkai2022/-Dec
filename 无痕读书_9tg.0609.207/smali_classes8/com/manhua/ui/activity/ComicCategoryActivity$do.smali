.class public Lcom/manhua/ui/activity/ComicCategoryActivity$do;
.super Ljava/lang/Object;
.source "ComicCategoryActivity.java"

# interfaces
.implements Lcom/manhua/ui/widget/PublicLoadingView$do;


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
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$do;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$do;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 2
    iget-object v1, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->else:Lcom/apk/z2;

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 4
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/apk/z2;->while(ZZ)V

    :cond_1
    return-void
.end method
