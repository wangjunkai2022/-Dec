.class public Lcom/apk/wb;
.super Ljava/lang/Object;
.source "LocalWebShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/wb;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/wb;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->for:Z

    return-void
.end method
