.class public Lcom/apk/y00;
.super Ljava/lang/Object;
.source "ComicCategoryActivity.java"

# interfaces
.implements Lcom/apk/g1;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/y00;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/apk/y00;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->for:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setCurrentItem(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/y00;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicCategoryActivity;->k(Lcom/manhua/ui/activity/ComicCategoryActivity;Z)V

    return-void
.end method
