.class public Lcom/apk/uh;
.super Ljava/lang/Object;
.source "FilePickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Ljava/io/File;

.field public final synthetic for:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;Ljava/io/File;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/uh;->for:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    iput-object p2, p0, Lcom/apk/uh;->do:Ljava/io/File;

    iput p3, p0, Lcom/apk/uh;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/uh;->for:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->for:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Lcom/apk/uh;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/apk/uh;->for:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/apk/uh;->for:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/apk/uh;->if:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_1
    return-void
.end method
