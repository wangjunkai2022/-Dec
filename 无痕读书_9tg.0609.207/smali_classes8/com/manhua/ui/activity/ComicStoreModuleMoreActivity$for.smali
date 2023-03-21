.class public Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$for;
.super Ljava/lang/Object;
.source "ComicStoreModuleMoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->n(Z)V
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
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$for;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity$for;->do:Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicStoreModuleMoreActivity;->do:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 3
    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method
