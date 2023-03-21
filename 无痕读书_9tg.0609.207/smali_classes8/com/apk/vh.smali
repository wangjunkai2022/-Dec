.class public Lcom/apk/vh;
.super Ljava/lang/Object;
.source "FilePickerAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/vh;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    iput p2, p0, Lcom/apk/vh;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/vh;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->do:[Z

    .line 3
    iget v0, p0, Lcom/apk/vh;->do:I

    aput-boolean p2, p1, v0

    return-void
.end method
