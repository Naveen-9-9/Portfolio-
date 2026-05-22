"use client";
import React, { useState } from "react";
import { cn } from "@workspace/ui/lib/utils";

type RotateDirection = "up" | "down" | "left" | "right";

interface CubeCardProps {
  size?: number;
  rotateDirection?: RotateDirection;
  frontContent?: React.ReactNode;
  backContent?: React.ReactNode;
  className?: string;
}

export function CubeCard({
  size = 200,
  rotateDirection = "down",
  frontContent,
  backContent,
  className,
}: CubeCardProps) {
  const [isHovered, setIsHovered] = useState(false);
  const half = size / 2;

  // Determine hover rotation transform based on direction
  const hoverRotation: Record<RotateDirection, string> = {
    up: "rotateX(90deg)",
    down: "rotateX(-90deg)",
    left: "rotateY(90deg)",
    right: "rotateY(-90deg)",
  };

  // 6 faces of a true 3D cube
  const faces = [
    { id: 'front', transform: `translateZ(${half}px)`, content: frontContent },
    { id: 'back', transform: `rotateX(180deg) translateZ(${half}px)`, content: null },
    { id: 'right', transform: `rotateY(90deg) translateZ(${half}px)`, content: rotateDirection === 'right' ? backContent : null },
    { id: 'left', transform: `rotateY(-90deg) translateZ(${half}px)`, content: rotateDirection === 'left' ? backContent : null },
    { id: 'top', transform: `rotateX(90deg) translateZ(${half}px)`, content: rotateDirection === 'down' ? backContent : null },
    { id: 'bottom', transform: `rotateX(-90deg) translateZ(${half}px)`, content: rotateDirection === 'up' ? backContent : null },
  ];

  return (
    <div
      className={cn("cursor-pointer", className)}
      style={{ perspective: "1000px", width: size, height: size }}
      onMouseEnter={() => setIsHovered(true)}
      onMouseLeave={() => setIsHovered(false)}
    >
      <div
        className="relative w-full h-full transition-transform duration-700 ease-in-out"
        style={{
          transformStyle: "preserve-3d",
          transform: `translateZ(-${half}px) ${
            isHovered ? hoverRotation[rotateDirection] : "rotateX(0deg) rotateY(0deg)"
          }`,
        }}
      >
        {faces.map((face) => (
          <div
            key={face.id}
            className="absolute inset-0 w-full h-full rounded-none overflow-hidden border border-black bg-[#0a0a0a] shadow-[0_0_10px_rgba(255,255,255,0.15)]"
            style={{
              transform: face.transform,
              backfaceVisibility: "hidden",
            }}
          >
            {face.content}
          </div>
        ))}
      </div>
    </div>
  );
}
