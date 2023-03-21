.class public Lcom/apk/th;
.super Ljava/lang/Object;
.source "FilePickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Ljava/io/File;

.field public final synthetic for:I

.field public final synthetic if:Lcom/biquge/ebook/app/widget/AppCheckBox;

.field public final synthetic new:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;Ljava/io/File;Lcom/biquge/ebook/app/widget/AppCheckBox;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/th;->new:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    iput-object p2, p0, Lcom/apk/th;->do:Ljava/io/File;

    iput-object p3, p0, Lcom/apk/th;->if:Lcom/biquge/ebook/app/widget/AppCheckBox;

    iput p4, p0, Lcom/apk/th;->for:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/th;->new:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    .line 2
    iget-boolean p1, p1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->new:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/apk/th;->do:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/th;->new:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    .line 5
    iget-object v1, p1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->do:[Z

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    new-array v1, v1, [Z

    .line 7
    iput-object v1, p1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->do:[Z

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/apk/th;->if:Lcom/biquge/ebook/app/widget/AppCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/apk/th;->new:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/apk/th;->new:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;

    move-result-object p1

    iget v1, p0, Lcom/apk/th;->for:I

    invoke-interface {p1, v0, v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_2
    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/apk/th;->do:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/apk/th;->new:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    .line 13
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->for:Ljava/util/Map;

    .line 14
    iget-object v1, p0, Lcom/apk/th;->do:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/apk/th;->if:Lcom/biquge/ebook/app/widget/AppCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/apk/th;->new:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/apk/th;->new:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;

    move-result-object p1

    iget v1, p0, Lcom/apk/th;->for:I

    invoke-interface {p1, v0, v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_6
    return-void
.end method
