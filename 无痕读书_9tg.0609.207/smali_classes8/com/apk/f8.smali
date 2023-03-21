.class public Lcom/apk/f8;
.super Ljava/lang/Object;
.source "MyNewsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f8;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f8;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    invoke-virtual {v0}, Lcom/apk/ss;->break()V

    return-void
.end method
