.class public Lcom/apk/x00;
.super Ljava/lang/Object;
.source "ComicCategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicCategoryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x00;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/x00;->do:Lcom/manhua/ui/activity/ComicCategoryActivity;

    iget-object v0, v0, Lcom/manhua/ui/activity/ComicCategoryActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method
