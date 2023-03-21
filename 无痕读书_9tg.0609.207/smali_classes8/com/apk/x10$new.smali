.class public Lcom/apk/x10$new;
.super Ljava/lang/Object;
.source "ComicRankFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/x10;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/x10;


# direct methods
.method public constructor <init>(Lcom/apk/x10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x10$new;->do:Lcom/apk/x10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/x10$new;->do:Lcom/apk/x10;

    invoke-static {v0}, Lcom/apk/x10;->f(Lcom/apk/x10;)V

    return-void
.end method
