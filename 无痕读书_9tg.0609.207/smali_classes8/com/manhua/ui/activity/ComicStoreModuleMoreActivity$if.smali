.class public Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$if;
.super Ljava/lang/Object;
.source "ComicStoreModuleMoreActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$if;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$if;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    invoke-static {v0}, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->j(Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;)V

    return-void
.end method
