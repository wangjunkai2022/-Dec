.class public final Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do$do;
.super Ljava/lang/Object;
.source "DownloadProgressButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;-><init>(Landroid/os/Parcel;Lcom/apk/vc;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;

    return-object p1
.end method
