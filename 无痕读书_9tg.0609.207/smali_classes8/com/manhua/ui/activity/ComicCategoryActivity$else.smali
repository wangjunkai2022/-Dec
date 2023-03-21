.class public Lcom/manhua/ui/activity/ComicCategoryActivity$else;
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
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$else;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$else;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPublicLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->if()V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicCategoryActivity$else;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicCategoryActivity;->else:Lcom/apk/z2;

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, p3, p2}, Lcom/apk/z2;->while(ZZ)V

    :cond_1
    return-void
.end method
