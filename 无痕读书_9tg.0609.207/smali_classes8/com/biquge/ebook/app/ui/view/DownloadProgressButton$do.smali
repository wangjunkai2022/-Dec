.class public Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;
.super Landroid/view/View$BaseSavedState;
.source "DownloadProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public do:I

.field public for:Ljava/lang/String;

.field public if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do$do;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do$do;-><init>()V

    sput-object v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/apk/vc;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->do:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->if:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->for:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->do:I

    .line 3
    iput p3, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->if:I

    .line 4
    iput-object p4, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->do:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->if:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->for:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
