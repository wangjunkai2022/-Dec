.class public Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$for;
.super Ljava/lang/Object;
.source "BookStoreModuleMoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->n(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$for;->do:Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity$for;->do:Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookStoreModuleMoreActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method
