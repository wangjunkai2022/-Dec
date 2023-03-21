.class public Lcom/apk/ob;
.super Ljava/lang/Object;
.source "FilePickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ob;->do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/ob;->do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->for:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->synchronized(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/apk/ob;->do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    invoke-virtual {v1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    new-instance v2, Lcom/apk/ob$do;

    invoke-direct {v2, p0, v0}, Lcom/apk/ob$do;-><init>(Lcom/apk/ob;Ljava/util/List;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
