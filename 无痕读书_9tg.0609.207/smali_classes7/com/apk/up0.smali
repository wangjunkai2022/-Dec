.class public Lcom/apk/up0;
.super Landroid/database/ContentObserver;
.source "IdentifierIdObserver.java"


# instance fields
.field public do:Ljava/lang/String;

.field public for:Lcom/apk/tp0;

.field public if:I


# direct methods
.method public constructor <init>(Lcom/apk/tp0;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/apk/up0;->for:Lcom/apk/tp0;

    .line 3
    iput p2, p0, Lcom/apk/up0;->if:I

    .line 4
    iput-object p3, p0, Lcom/apk/up0;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/up0;->for:Lcom/apk/tp0;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lcom/apk/up0;->if:I

    iget-object v1, p0, Lcom/apk/up0;->do:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/apk/tp0;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
