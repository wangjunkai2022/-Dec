.class public Lcom/manhua/ui/activity/CreateComicListActivity$for;
.super Ljava/lang/Object;
.source "CreateComicListActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/CreateComicListActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/CreateComicListActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/CreateComicListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$for;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity$for;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicListActivity$for;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->finish()V

    return-void
.end method
