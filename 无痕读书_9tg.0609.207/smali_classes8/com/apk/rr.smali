.class public Lcom/apk/rr;
.super Ljava/lang/Object;
.source "NoTransition.java"

# interfaces
.implements Lcom/apk/sr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/rr$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/sr<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final do:Lcom/apk/rr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/rr<",
            "*>;"
        }
    .end annotation
.end field

.field public static final if:Lcom/apk/tr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/tr<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/rr;

    invoke-direct {v0}, Lcom/apk/rr;-><init>()V

    sput-object v0, Lcom/apk/rr;->do:Lcom/apk/rr;

    .line 2
    new-instance v0, Lcom/apk/rr$do;

    invoke-direct {v0}, Lcom/apk/rr$do;-><init>()V

    sput-object v0, Lcom/apk/rr;->if:Lcom/apk/tr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
