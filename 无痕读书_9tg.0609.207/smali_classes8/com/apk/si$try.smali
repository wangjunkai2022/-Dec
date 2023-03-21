.class public final Lcom/apk/si$try;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/si;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "try"
.end annotation


# instance fields
.field public final do:[Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/apk/si;Ljava/lang/String;J[Ljava/io/File;[JLcom/apk/si$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Lcom/apk/si$try;->do:[Ljava/io/File;

    return-void
.end method
