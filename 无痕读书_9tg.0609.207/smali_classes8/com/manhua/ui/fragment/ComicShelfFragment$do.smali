.class public Lcom/manhua/ui/fragment/ComicShelfFragment$do;
.super Ljava/lang/Object;
.source "ComicShelfFragment.java"

# interfaces
.implements Lcom/apk/et;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment;->r(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$do;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$do;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/apk/yg;->try:Z

    :cond_0
    return-void
.end method
