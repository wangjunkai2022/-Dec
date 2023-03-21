.class public Lcom/apk/ob$do;
.super Ljava/lang/Object;
.source "FilePickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ob;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/apk/ob;


# direct methods
.method public constructor <init>(Lcom/apk/ob;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ob$do;->if:Lcom/apk/ob;

    iput-object p2, p0, Lcom/apk/ob$do;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ob$do;->if:Lcom/apk/ob;

    iget-object v0, v0, Lcom/apk/ob;->do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/ob$do;->do:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/ob$do;->if:Lcom/apk/ob;

    iget-object v0, v0, Lcom/apk/ob;->do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    .line 6
    iget-object v1, p0, Lcom/apk/ob$do;->do:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->do(Ljava/util/List;)V

    :cond_0
    return-void
.end method
