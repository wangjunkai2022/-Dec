.class public Lcom/manhua/ui/fragment/ComicShelfFragment$if;
.super Ljava/lang/Object;
.source "ComicShelfFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment;->w(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$if;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iput-boolean p2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$if;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$if;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$if;->do:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method
