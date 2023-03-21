.class public Lcom/manhua/ui/activity/ComicListDetailActivity$if$do;
.super Ljava/lang/Object;
.source "ComicListDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicListDetailActivity$if;->try(Lcom/manhua/data/bean/ComicInfoEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicListDetailActivity$if;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicListDetailActivity$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if$do;->do:Lcom/manhua/ui/activity/ComicListDetailActivity$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$if$do;->do:Lcom/manhua/ui/activity/ComicListDetailActivity$if;

    iget-object v0, v0, Lcom/manhua/ui/activity/ComicListDetailActivity$if;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicListDetailActivity;->final:Lcom/manhua/ui/widget/PublicLoadingView;

    .line 3
    invoke-virtual {v0}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    return-void
.end method
