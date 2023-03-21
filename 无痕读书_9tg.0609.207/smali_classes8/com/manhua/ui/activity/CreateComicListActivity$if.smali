.class public Lcom/manhua/ui/activity/CreateComicListActivity$if;
.super Lcom/apk/r5;
.source "CreateComicListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/CreateComicListActivity;
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
    iput-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$if;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public const(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$if;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$if;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    invoke-virtual {p1}, Lcom/apk/f6;->finish()V

    return-void
.end method
