.class public Lcom/manhua/ui/activity/ComicCategoryActivity$try;
.super Ljava/lang/Object;
.source "ComicCategoryActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicCategoryActivity;->initData()V
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
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$try;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$try;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 2
    iget-object v1, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->else:Lcom/apk/z2;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    sget-object v1, Lcom/manhua/ui/activity/ComicCategoryActivity;->throw:[Ljava/lang/String;

    iget-object v2, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->for:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    .line 4
    sget-object v2, Lcom/apk/q0;->try:[Ljava/lang/String;

    iget-object v3, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->new:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v3

    aget-object v2, v2, v3

    .line 5
    iget v3, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->try:I

    invoke-static {v1, v2, v3}, Lcom/apk/w;->new(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->else:Lcom/apk/z2;

    iget v0, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->try:I

    invoke-virtual {v2, v1, v0}, Lcom/apk/z2;->public(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
